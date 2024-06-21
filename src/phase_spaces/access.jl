# accessor interface particle stateful
QEDbase.particle_direction(part::ParticleStateful) = part.dir
QEDbase.particle_species(part::ParticleStateful) = part.species
QEDbase.momentum(part::ParticleStateful) = part.mom

# accessor interface phase space point
"""
    Base.getindex(psp::PhaseSpacePoint, dir::Incoming, n::Int)

Overload for the array indexing operator `[]`. Returns the nth incoming particle in this phase space point.
"""
function Base.getindex(psp::PhaseSpacePoint, ::QEDbase.Incoming, n::Int)
    return psp.in_particles[n]
end

"""
    Base.getindex(psp::PhaseSpacePoint, dir::Outgoing, n::Int)

Overload for the array indexing operator `[]`. Returns the nth outgoing particle in this phase space point.
"""
function Base.getindex(psp::PhaseSpacePoint, ::QEDbase.Outgoing, n::Int)
    return psp.out_particles[n]
end

QEDbase.process(psp::PhaseSpacePoint) = psp.proc
QEDbase.model(psp::PhaseSpacePoint) = psp.model
QEDbase.phase_space_definition(psp::PhaseSpacePoint) = psp.ps_def

QEDbase.particles(psp::PhaseSpacePoint, ::QEDbase.Incoming) = psp.in_particles
QEDbase.particles(psp::PhaseSpacePoint, ::QEDbase.Outgoing) = psp.out_particles
